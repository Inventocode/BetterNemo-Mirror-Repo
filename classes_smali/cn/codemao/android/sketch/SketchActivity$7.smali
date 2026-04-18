.class Lcn/codemao/android/sketch/SketchActivity$7;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 490
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xfa0

    if-nez p1, :cond_76

    .line 495
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2400(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result p1

    if-ne p1, v0, :cond_47

    .line 497
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/16 v0, 0xfa1

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2402(Lcn/codemao/android/sketch/SketchActivity;I)I

    .line 498
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, p1, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2400(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextColorType(I)V

    .line 499
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2400(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorType(I)V

    .line 500
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2600(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    goto :goto_a7

    .line 502
    :cond_47
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2402(Lcn/codemao/android/sketch/SketchActivity;I)I

    .line 503
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, p1, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2400(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextColorType(I)V

    .line 504
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2400(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorType(I)V

    .line 505
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2700(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    goto :goto_a7

    .line 508
    :cond_76
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$2400(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v1

    if-ne v1, v0, :cond_84

    .line 509
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2702(Lcn/codemao/android/sketch/SketchActivity;I)I

    goto :goto_89

    .line 511
    :cond_84
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2602(Lcn/codemao/android/sketch/SketchActivity;I)I

    .line 513
    :goto_89
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 514
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$7;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v1, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2800(Lcn/codemao/android/sketch/SketchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextColor(I)V

    :goto_a7
    return-void
.end method
