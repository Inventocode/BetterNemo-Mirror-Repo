.class Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;
.super Lcom/codemao/nemo/view/flowlayout/TagAdapter;
.source "SearchRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/SearchRecommendFragment;->getTagAdapter(Ljava/util/List;)Lcom/codemao/nemo/view/flowlayout/TagAdapter;
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Ljava/util/List;)V
    .registers 3

    .line 220
    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 220
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;->getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/String;)Landroid/view/View;
    .registers 5

    .line 224
    new-instance p1, Lcom/codemao/nemo/view/ColorTextView;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    const/high16 v0, 0x41600000  # 14.0f

    .line 225
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 227
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 229
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 231
    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget p3, p2, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->i20:I

    iget p2, p2, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->i5:I

    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    const p2, -0xb0b0c

    .line 232
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xaaaaab

    .line 233
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
