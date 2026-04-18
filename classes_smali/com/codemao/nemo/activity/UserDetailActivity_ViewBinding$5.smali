.class Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 3

    .line 103
    iput-object p2, p0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->followUser(Landroid/view/View;)V

    return-void
.end method
