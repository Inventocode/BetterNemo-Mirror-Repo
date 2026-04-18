.class Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserCoverChooseActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/UserCoverChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding;Lcom/codemao/nemo/activity/UserCoverChooseActivity;)V
    .registers 3

    .line 35
    iput-object p2, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding$1;->val$target:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
