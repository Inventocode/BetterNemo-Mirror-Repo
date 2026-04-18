.class public abstract Lcom/codemao/toolssdk/view/ToolsWebViewBase;
.super Landroid/widget/FrameLayout;
.source "ToolsWebViewBase.kt"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method protected final getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method
