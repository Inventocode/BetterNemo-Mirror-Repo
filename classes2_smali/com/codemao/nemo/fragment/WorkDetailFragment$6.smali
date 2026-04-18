.class Lcom/codemao/nemo/fragment/WorkDetailFragment$6;
.super Lcom/codemao/nemo/view/flowlayout/TagAdapter;
.source "WorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->updateThemeTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/view/flowlayout/TagAdapter<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

.field final synthetic val$i12:I

.field final synthetic val$i15:I

.field final synthetic val$i5:I

.field final synthetic val$i7:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;Ljava/util/List;IIII)V
    .registers 7

    .line 414
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iput p3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i12:I

    iput p4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i15:I

    iput p5, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i5:I

    iput p6, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i7:I

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILcom/codemao/creativecenter/utils/bcm/bean/ProductTag;)Landroid/view/View;
    .registers 8

    .line 417
    new-instance p1, Lcom/codemao/nemo/view/ColorTextView;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;-><init>(Landroid/content/Context;)V

    .line 418
    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$500(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Z

    move-result p2

    if-eqz p2, :cond_1e

    sget-object p2, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    const v0, 0x7f070259

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/util/text/NemoTextUtils;->fetchDimenTxtSize(I)I

    move-result p2

    int-to-float p2, p2

    goto :goto_20

    :cond_1e
    const/high16 p2, 0x41600000  # 14.0f

    :goto_20
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 420
    invoke-virtual {p3}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getTheme_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$500(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Z

    move-result p2

    if-eqz p2, :cond_36

    iget p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i12:I

    goto :goto_38

    :cond_36
    iget p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i15:I

    :goto_38
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$500(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i5:I

    goto :goto_45

    :cond_43
    iget v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i7:I

    :goto_45
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$500(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i12:I

    goto :goto_52

    :cond_50
    iget v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i15:I

    :goto_52
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$500(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i5:I

    goto :goto_5f

    :cond_5d
    iget v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->val$i7:I

    :goto_5f
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    invoke-virtual {p3}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c8

    :goto_71
    const/4 v0, -0x1

    goto :goto_9c

    :sswitch_73
    const-string v0, "SUBJECT_WORK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7c

    goto :goto_71

    :cond_7c
    const/4 v0, 0x3

    goto :goto_9c

    :sswitch_7e
    const-string v0, "NEW_RECOMMEND_WORK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    goto :goto_71

    :cond_87
    const/4 v0, 0x2

    goto :goto_9c

    :sswitch_89
    const-string v1, "USER_COURSE_WORK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9c

    goto :goto_71

    :sswitch_92
    const-string v0, "OFFICIAL_COURSE_WORK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9b

    goto :goto_71

    :cond_9b
    const/4 v0, 0x0

    :cond_9c
    :goto_9c
    packed-switch v0, :pswitch_data_da

    goto :goto_c6

    :pswitch_a0  #0x3
    const p2, -0x220f01

    .line 429
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xe77d2a

    .line 430
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c6

    :pswitch_ad  #0x2
    const p2, -0x230721

    .line 433
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xde7ad4

    .line 434
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c6

    :pswitch_ba  #0x0, 0x1
    const p2, -0x141701

    .line 425
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    const p2, -0xa5b531

    .line 426
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_c6
    return-object p1

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x5f1e229f -> :sswitch_92
        -0x599d19bf -> :sswitch_89
        -0x1a68168d -> :sswitch_7e
        0x31ec5e64 -> :sswitch_73
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_ba  #00000000
        :pswitch_ba  #00000001
        :pswitch_ad  #00000002
        :pswitch_a0  #00000003
    .end packed-switch
.end method

.method public bridge synthetic getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 414
    check-cast p3, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;->getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILcom/codemao/creativecenter/utils/bcm/bean/ProductTag;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
