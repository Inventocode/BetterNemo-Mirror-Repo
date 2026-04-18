.class public final Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;
.super Ljava/lang/Object;
.source "ToolsWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/view/CMToolSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic toolLoadDidFail$default(Lcom/codemao/toolssdk/view/CMToolSessionListener;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 680
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toolLoadDidFail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
