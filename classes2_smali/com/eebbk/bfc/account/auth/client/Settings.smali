.class Lcom/eebbk/bfc/account/auth/client/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private host:Ljava/lang/String;

.field private isDebug:Z

.field private isDebugUrl:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/eebbk/bfc/account/auth/client/Settings;->isDebug:Z

    .line 8
    iput-boolean v0, p0, Lcom/eebbk/bfc/account/auth/client/Settings;->isDebugUrl:Z

    return-void
.end method


# virtual methods
.method isDebug()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/eebbk/bfc/account/auth/client/Settings;->isDebug:Z

    return v0
.end method

.method setDebug(Z)Lcom/eebbk/bfc/account/auth/client/Settings;
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/eebbk/bfc/account/auth/client/Settings;->isDebug:Z

    return-object p0
.end method

.method toJson()Ljava/lang/String;
    .registers 4

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "isDebugUrl"

    .line 39
    iget-boolean v2, p0, Lcom/eebbk/bfc/account/auth/client/Settings;->isDebugUrl:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "host"

    .line 40
    iget-object v2, p0, Lcom/eebbk/bfc/account/auth/client/Settings;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
