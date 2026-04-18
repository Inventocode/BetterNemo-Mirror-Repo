.class Lcn/codemao/android/sketch/activity/ICutActivity$3;
.super Ljava/lang/Object;
.source "ICutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 151
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$3;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 154
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity$3;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$100(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animAlpha(Landroid/view/View;ZF)V

    .line 155
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity$3;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$200(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcn/codemao/android/sketch/activity/ICutActivity$3;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {v3}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$300(Lcn/codemao/android/sketch/activity/ICutActivity;)F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v0, v3, v4, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;FZF)V

    .line 156
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity$3;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$400(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcn/codemao/android/sketch/activity/ICutActivity$3;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {v2}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$300(Lcn/codemao/android/sketch/activity/ICutActivity;)F

    move-result v2

    invoke-static {v4, v0, v2, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;FZ)V

    return-void
.end method
