"""
handler.py

Get the required models.
"""
import tensorflow as tf

# Model tags
MLP = 'mlp'
CNN = 'cnn'


def create_model(model_tag, input_dim):
    if model_tag == MLP: return get_mlp(input_dim)
    if model_tag == CNN: return get_cnn(input_dim)
    raise Exception(f"Model type '{model_tag}' not defined")


def get_mlp(input_dim):
    """
    Create a Multi-Layer Perceptron model.
    
    :param input_dim: Dimension of the input the model receives
    :return: MLP
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Input(input_dim,
                                    name="Input"))
    model.add(tf.keras.layers.Flatten(name="Flatten"))
    model.add(tf.keras.layers.Dense(128,
                                    activation='relu',
                                    name='Start'))
    model.add(tf.keras.layers.Dense(128,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='sigmoid',  # Multi-class regression
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam')
    return model


def get_cnn(input_dim):
    """
    Create a Convolutional Neural Network.
    
    :param input_dim: Dimension of the input the model receives
    :return: CNN
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Input(input_dim,
                                    name="Input"))
    model.add(tf.keras.layers.Conv2D(filters=32,
                                     kernel_size=2,
                                     activation='relu',
                                     name='Conv2D_1'))
    model.add(tf.keras.layers.Conv2D(filters=32,
                                     kernel_size=2,
                                     activation='relu',
                                     name='Conv2D_2'))
    model.add(tf.keras.layers.MaxPooling2D(pool_size=(2, 2),
                                           name='MaxPool'))
    model.add(tf.keras.layers.Flatten())
    model.add(tf.keras.layers.Dense(64,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='sigmoid',  # Multi-class regression
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam')
    return model
