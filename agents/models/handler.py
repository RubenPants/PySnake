"""
handler.py

Get the required models.
"""
import tensorflow as tf


def get_mlp(board_flat):
    """
    Create a Multi-Layer Perceptron model.
    
    :param board_flat: Sample input the model receives
    :return: MLP
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Flatten(input_shape=board_flat.shape))
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='softmax',
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam')
    return model


def get_cnn(board):
    """
    Create a Convolutional Neural Network.
    
    :param board: Sample input the model receives
    :return: CNN
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Conv2D(input_shape=board.shape,
                                     filters=32,
                                     kernel_size=2,
                                     activation='relu',
                                     name='Conv2D_1'))
    model.add(tf.keras.layers.Conv2D(filters=64,
                                     kernel_size=2,
                                     activation='relu',
                                     name='Conv2D_2'))
    model.add(tf.keras.layers.MaxPooling2D(pool_size=(2, 2),
                                           name='MaxPool'))
    model.add(tf.keras.layers.Flatten())
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='softmax',
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam', metrics=['mae'])
    return model


def get_rnn(board_flat):
    """
    Create a Recurrent Neural Network.
    
    :param board_flat: Sample input the model receives
    :return: RNN
    """
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.GRU(64,
                                  input_shape=board_flat.shape,
                                  return_sequences=False,
                                  activation='relu',
                                  name='LSTM_1'))
    model.add(tf.keras.layers.Dense(32,
                                    activation='relu',
                                    name='Intermediate'))
    model.add(tf.keras.layers.Dense(3,
                                    activation='softmax',
                                    name='Output'))
    model.compile(loss='mse', optimizer='adam', metrics=['mae'])
    return model
