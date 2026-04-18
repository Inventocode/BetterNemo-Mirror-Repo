.class public Lcom/codemao/nemo/bean/JsWebMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "JsWebMsg.java"


# instance fields
.field private payload:Ljava/lang/Object;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/codemao/nemo/bean/JsWebMsg;->type:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/codemao/nemo/bean/JsWebMsg;->payload:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/JsWebMsg;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPayloadStr()Ljava/lang/String;
    .registers 3

    .line 28
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/JsWebMsg;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/JsWebMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPayload(Ljava/lang/Object;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/bean/JsWebMsg;->payload:Ljava/lang/Object;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/JsWebMsg;->type:Ljava/lang/String;

    return-void
.end method
