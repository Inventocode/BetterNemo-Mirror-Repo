.class Lcom/codemao/creativestore/presenter/CreateUtils$27;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->getActorsBlockCounts(Ljava/lang/String;Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$getActorsBlockCountsCallBack:Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;)V
    .registers 3

    .line 3290
    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$27;->val$getActorsBlockCountsCallBack:Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 4

    .line 3294
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$27;->val$getActorsBlockCountsCallBack:Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;

    if-eqz v0, :cond_1f

    .line 3295
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;->onResult(Lcom/google/gson/JsonObject;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1f

    .line 3298
    :catch_19
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$27;->val$getActorsBlockCountsCallBack:Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;->onResult(Lcom/google/gson/JsonObject;)V

    :cond_1f
    :goto_1f
    return-void
.end method
