import Config

config :picking_and_delivery, :mongo_config,
    name: :mongo,
    url: "mongodb+srv://skywalker:skywalker@cluster0.iuwtb.mongodb.net/pickings",
    pool_size: 2
