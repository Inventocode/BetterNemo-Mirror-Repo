.class public interface abstract Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;
.super Ljava/lang/Object;
.source "LocalWebJsCallNativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JsCallNativeCallBack"
.end annotation


# virtual methods
.method public abstract getUserTokenmessage()Ljava/lang/String;
.end method

.method public abstract onClickShare(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V
.end method

.method public abstract onCopyContent(Ljava/lang/String;)V
.end method

.method public abstract onFinishUserAgreement(Lcom/codemao/nemo/bean/GetUserLevelMessage;)V
.end method

.method public abstract onReportCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReportPageVist(Ljava/lang/String;)V
.end method
