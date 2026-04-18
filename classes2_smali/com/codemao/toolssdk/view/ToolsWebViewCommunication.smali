.class public abstract Lcom/codemao/toolssdk/view/ToolsWebViewCommunication;
.super Lcom/codemao/toolssdk/view/ToolsWebViewBase;
.source "ToolsWebViewCommunication.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method
