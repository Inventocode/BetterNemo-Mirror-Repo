.class Lcom/codemao/nemo/activity/UserAvatarEditActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserAvatarEditActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserAvatarEditActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/UserAvatarEditActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity_ViewBinding;Lcom/codemao/nemo/activity/UserAvatarEditActivity;)V
    .registers 3

    .line 33
    iput-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 36
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->saveBitmap()V

    return-void
.end method
