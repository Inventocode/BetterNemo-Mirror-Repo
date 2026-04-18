.class Lcom/codemao/creativecenter/callback/KeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "KeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider$1;->this$0:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider$1;->this$0:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->access$000(Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider$1;->this$0:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->access$100(Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;)V

    :cond_d
    return-void
.end method
