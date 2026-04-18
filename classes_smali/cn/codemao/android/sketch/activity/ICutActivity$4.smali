.class Lcn/codemao/android/sketch/activity/ICutActivity$4;
.super Ljava/lang/Object;
.source "ICutActivity.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ICutActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ICutActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCutDoneCallback(Z)V
    .registers 3

    if-eqz p1, :cond_18

    .line 164
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$100(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$100(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_2d

    .line 167
    :cond_18
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$100(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 168
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$100(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_2d
    return-void
.end method

.method public canUndoCallback(Z)V
    .registers 3

    if-nez p1, :cond_e

    .line 175
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$200(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_19

    .line 177
    :cond_e
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$4;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$200(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_19
    return-void
.end method
