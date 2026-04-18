.class Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;
.super Ljava/lang/Object;
.source "FullScreenEditPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPop;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 431
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 432
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    .line 433
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 438
    :cond_48
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result v0

    const-string v2, "   "

    packed-switch v0, :pswitch_data_20e

    goto/16 :goto_20d

    .line 485
    :pswitch_55  #0xd
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_folding_block_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 489
    :pswitch_6c  #0xc
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_recording_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 492
    :pswitch_83  #0xb
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_parameter_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 482
    :pswitch_9a  #0xa
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_function_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 462
    :pswitch_b1  #0x9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_cloud_variables:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_20d

    .line 459
    :pswitch_be  #0x8
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_list_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 474
    :pswitch_d5  #0x7
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1400(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_cloud_public_variables:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 476
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_cloud_private_variables:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 477
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_cloud_variables:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_20d

    .line 470
    :pswitch_101  #0x5, 0x6
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmEditText;->setHasFiter(Z)V

    .line 471
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_string:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 465
    :pswitch_121  #0x4
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmEditText;->setHasFiter(Z)V

    .line 466
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_broadcast_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 456
    :pswitch_141  #0x3
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_variable_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_20d

    .line 448
    :pswitch_158  #0x2
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_global_list:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1400(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_sprite_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_list_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_20d

    .line 440
    :pswitch_1b3  #0x1
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_variable_name:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_global_variable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1400(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_sprite_variable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20d
    return-void

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_1b3  #00000001
        :pswitch_158  #00000002
        :pswitch_141  #00000003
        :pswitch_121  #00000004
        :pswitch_101  #00000005
        :pswitch_101  #00000006
        :pswitch_d5  #00000007
        :pswitch_be  #00000008
        :pswitch_b1  #00000009
        :pswitch_9a  #0000000a
        :pswitch_83  #0000000b
        :pswitch_6c  #0000000c
        :pswitch_55  #0000000d
    .end packed-switch
.end method
