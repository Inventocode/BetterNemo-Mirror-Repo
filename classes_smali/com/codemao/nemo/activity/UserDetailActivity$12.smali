.class Lcom/codemao/nemo/activity/UserDetailActivity$12;
.super Lcom/codemao/nemo/view/flowlayout/TagAdapter;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->updateUserTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/view/flowlayout/TagAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

.field final synthetic val$paddingRightLeft:I

.field final synthetic val$paddingTopBottom:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;Ljava/util/List;II)V
    .registers 5

    .line 857
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iput p3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$12;->val$paddingRightLeft:I

    iput p4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$12;->val$paddingTopBottom:I

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 857
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/UserDetailActivity$12;->getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/String;)Landroid/view/View;
    .registers 6

    .line 860
    new-instance p1, Lcom/codemao/nemo/view/ColorTextView;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p1, v0}, Lcom/codemao/nemo/view/ColorTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/high16 v1, 0x41400000  # 12.0f

    .line 861
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 862
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget p3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$12;->val$paddingRightLeft:I

    iget v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$12;->val$paddingTopBottom:I

    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_58

    if-eq p2, v0, :cond_4b

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3e

    const/4 p3, 0x3

    if-eq p2, p3, :cond_31

    const/4 p3, 0x4

    if-eq p2, p3, :cond_25

    goto :goto_63

    :cond_25
    const/16 p2, -0x1a2c

    .line 882
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0x2d9ada

    .line 883
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_63

    :cond_31
    const p2, -0x280b15

    .line 878
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xee5186

    .line 879
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_63

    :cond_3e
    const p2, -0xc1001

    .line 874
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xa1bc3d

    .line 875
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_63

    :cond_4b
    const p2, -0x230d01

    .line 870
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xc86a28

    .line 871
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_63

    :cond_58
    const/16 p2, -0x1415

    .line 866
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0x9ada2

    .line 867
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_63
    return-object p1
.end method
