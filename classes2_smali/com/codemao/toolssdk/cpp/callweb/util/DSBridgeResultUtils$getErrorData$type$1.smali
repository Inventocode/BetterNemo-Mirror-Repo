.class public final Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils$getErrorData$type$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DSBridgeResultUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getErrorData(Lorg/json/JSONObject;)Lcom/codemao/toolssdk/model/dsbridge/IResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
        "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
