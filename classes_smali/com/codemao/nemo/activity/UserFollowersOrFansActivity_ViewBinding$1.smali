.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserFollowersOrFansActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding;Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V
    .registers 3

    .line 45
    iput-object p2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->follow(Landroid/view/View;)V

    return-void
.end method
