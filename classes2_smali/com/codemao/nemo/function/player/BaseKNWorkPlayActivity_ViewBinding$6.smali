.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BaseKNWorkPlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 3

    .line 109
    iput-object p2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$6;->val$target:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$6;->val$target:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->showGameKeyboard(Landroid/view/View;)V

    return-void
.end method
