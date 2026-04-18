.class Lcom/codemao/nemo/view/KeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "KeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/KeyboardHeightProvider;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/KeyboardHeightProvider;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/codemao/nemo/view/KeyboardHeightProvider$1;->this$0:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/view/KeyboardHeightProvider$1;->this$0:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->access$000(Lcom/codemao/nemo/view/KeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/view/KeyboardHeightProvider$1;->this$0:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-static {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->access$100(Lcom/codemao/nemo/view/KeyboardHeightProvider;)V

    :cond_d
    return-void
.end method
