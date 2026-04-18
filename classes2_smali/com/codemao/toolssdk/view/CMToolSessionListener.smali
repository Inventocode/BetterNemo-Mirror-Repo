.class public interface abstract Lcom/codemao/toolssdk/view/CMToolSessionListener;
.super Ljava/lang/Object;
.source "ToolsWebView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract toolLoadDidFinish()V
.end method

.method public abstract toolLoadDidStart()V
.end method

.method public abstract toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
.end method
