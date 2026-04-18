.class public Lcom/sdk/base/framework/bean/DataInfo;
.super Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "r"

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method


# virtual methods
.method public putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 3

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    return-object p0
.end method
