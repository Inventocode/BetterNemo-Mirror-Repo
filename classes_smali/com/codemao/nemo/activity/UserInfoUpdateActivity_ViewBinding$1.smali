.class Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserInfoUpdateActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V
    .registers 3

    .line 45
    iput-object p2, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
