.class public final Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;
.super Ljava/lang/Object;
.source "ISImageCutOutActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/image_selector/widget/OperateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canReverse(Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p1, :cond_4f

    .line 188
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_12
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_corner_up_right_enable:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_25

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_25
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_37

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_37
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_48

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move-object v1, p1

    :goto_49
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 193
    :cond_4f
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_5b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5b
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_corner_up_right_disable:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_6e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6e
    move-object v1, p1

    :goto_6f
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_74
    return-void
.end method

.method public canUndo(Z)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p1, :cond_54

    .line 174
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$setCorrectBtnEnable(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Z)V

    .line 175
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_18
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    sget v4, Lcom/codemao/toolssdk/R$drawable;->toolsdk_corner_up_left_enable:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_2b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2b
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 177
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_3c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3c
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_4d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4e

    :cond_4d
    move-object v1, p1

    :goto_4e
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivReverse:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7e

    .line 180
    :cond_54
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$setCorrectBtnEnable(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;Z)V

    .line 181
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_65

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_65
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_corner_up_left_disable:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$getBinding$p(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;

    move-result-object p1

    if-nez p1, :cond_78

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_79

    :cond_78
    move-object v1, p1

    :goto_79
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsCutoutBinding;->ivUndo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_7e
    return-void
.end method

.method public dismissPaintRangeWindow()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity$initView$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;->access$dismissPenRangeWindow(Lcom/codemao/toolssdk/image_selector/ui/ISImageCutOutActivity;)V

    return-void
.end method
