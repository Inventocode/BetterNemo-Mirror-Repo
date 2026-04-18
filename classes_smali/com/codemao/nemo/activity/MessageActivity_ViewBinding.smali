.class public Lcom/codemao/nemo/activity/MessageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MessageActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/MessageActivity;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/codemao/nemo/view/CustomTabViewMessage;

    const v1, 0x7f0a0760

    const-string v2, "field \'customTabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CustomTabViewMessage;

    iput-object v0, p1, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    .line 32
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0992

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/activity/MessageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a037b

    const-string v1, "method \'clickClose\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance v0, Lcom/codemao/nemo/activity/MessageActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/MessageActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/MessageActivity_ViewBinding;Lcom/codemao/nemo/activity/MessageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
