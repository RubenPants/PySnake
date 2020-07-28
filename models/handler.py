"""
handler.py

Get the required models.
"""
import tensorflow as tf

# Model tags
MLP = 'mlp'
CNN = 'cnn'
RNN = 'rnn'


def create_model(model_tag, input_dim):
    if model_tag == MLP: return get_mlp(input_dim)
    if model_tag == CNN: return get_cnn(input_dim)
    if model_tag == RNN: return get_rnn(input_dim)
    raise Exception(f"Model type '{model_tag}' not defined")


def get_mlp(input_dim):
    """
    Create a Multi-Layer Perceptron model.
    
    :param input_dim: Dimension of the input the model receives
    :return: MLP
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Flatten(input_shape=input_dim))
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Start'))
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='sigmoid',  # Multi-class regression
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam', metrics=['acc'])
    return model


def get_cnn(input_dim):
    """
    Create a Convolutional Neural Network.
    
    :param input_dim: Dimension of the input the model receives
    :return: CNN
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Input(input_dim))
    model.add(tf.keras.layers.Conv2D(filters=32,
                                     kernel_size=2,
                                     activation='relu',
                                     name='Conv2D_1'))
    model.add(tf.keras.layers.Conv2D(filters=32,
                                     kernel_size=2,  # Larger kernel, wider 'viewing angles'
                                     activation='relu',
                                     name='Conv2D_2'))
    model.add(tf.keras.layers.MaxPooling2D(pool_size=(2, 2),
                                           name='MaxPool'))
    model.add(tf.keras.layers.Flatten())
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='sigmoid',  # Multi-class regression
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam', metrics=['acc'])
    return model


def get_rnn(input_dim):
    """
    Create a Recurrent Neural Network.
    
    :param input_dim: Dimension of the input the model receives
    :return: RNN
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.GRU(32,
                                  input_shape=input_dim,
                                  return_sequences=False,
                                  activation='relu',
                                  name='GRU'))
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='sigmoid',  # Multi-class regression
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam', metrics=['acc'])
    return model
