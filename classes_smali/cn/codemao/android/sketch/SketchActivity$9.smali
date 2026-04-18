.class Lcn/codemao/android/sketch/SketchActivity$9;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideKeyBoard(I)V
    .registers 3

    .line 571
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$3000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 572
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onMove()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3300(Lcn/codemao/android/sketch/SketchActivity;Z)V

    return-void
.end method

.method public onShowKeyBoard(IF)V
    .registers 6

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3200(Lcn/codemao/android/sketch/SketchActivity;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_12

    return-void

    .line 558
    :cond_12
    new-instance p1, Lcn/codemao/android/sketch/model/TextVO;

    invoke-direct {p1}, Lcn/codemao/android/sketch/model/TextVO;-><init>()V

    .line 559
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object p2, p2, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV4;->getSelectText()Lcn/codemao/android/sketch/model/StickerTextInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/TextVO;->setText(Ljava/lang/String;)V

    .line 560
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object p2, p2, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV4;->getSelectText()Lcn/codemao/android/sketch/model/StickerTextInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getColorPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/TextVO;->setColorPosition(I)V

    .line 561
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object p2, p2, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV4;->getSelectText()Lcn/codemao/android/sketch/model/StickerTextInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/TextVO;->setHasBackground(Z)V

    .line 562
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const-class v1, Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "text"

    .line 563
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 564
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/16 v0, 0x4d2

    invoke-virtual {p1, p2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 565
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    sget p2, Lcn/codemao/android/sketch/R$anim;->bottom_in:I

    sget v0, Lcn/codemao/android/sketch/R$anim;->bottom_out:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 566
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3202(Lcn/codemao/android/sketch/SketchActivity;J)J

    return-void
.end method

.method public onStopDrawingLine()V
    .registers 3

    .line 549
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$mipmap;->icn_shape_line:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onUP()V
    .registers 3

    .line 587
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine()Z

    move-result v0

    if-nez v0, :cond_15

    .line 588
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$mipmap;->icn_shape_line:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    :cond_15
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$3300(Lcn/codemao/android/sketch/SketchActivity;Z)V

    .line 591
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$9;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$3400(Lcn/codemao/android/sketch/SketchActivity;)V

    return-void
.end method
