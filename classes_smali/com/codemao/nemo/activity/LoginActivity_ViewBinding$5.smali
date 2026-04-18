.class Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LoginActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/LoginActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 3

    .line 95
    iput-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->onTryItOutClicked(Landroid/view/View;)V

    return-void
.end method
