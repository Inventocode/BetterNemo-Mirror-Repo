.class Lcom/codemao/nemo/activity/UserDetailActivity$1;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 9

    .line 232
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->toScroll:I

    .line 234
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$000(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result p1

    neg-int p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p2, p1, :cond_54

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$100(Lcom/codemao/nemo/activity/UserDetailActivity;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 236
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v0, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 237
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$102(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    .line 239
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0800e4

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 240
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v2, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$000(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {p1, v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$200(Lcom/codemao/nemo/activity/UserDetailActivity;I)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 241
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivExit:Landroid/widget/ImageView;

    const v2, 0x7f0e0059

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivShare:Landroid/widget/ImageView;

    const v2, 0x7f0e00b4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8d

    .line 246
    :cond_54
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$100(Lcom/codemao/nemo/activity/UserDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 247
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v1, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 248
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$102(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    .line 250
    :cond_66
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0800e5

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 251
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 252
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivShare:Landroid/widget/ImageView;

    const v2, 0x7f0e00a7

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->ivExit:Landroid/widget/ImageView;

    const v2, 0x7f0e00ad

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :goto_8d
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$300(Lcom/codemao/nemo/activity/UserDetailActivity;)Lcom/codemao/nemo/bean/UserDetailInfoV2;

    move-result-object p1

    if-eqz p1, :cond_1b2

    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$400(Lcom/codemao/nemo/activity/UserDetailActivity;)Z

    move-result p1

    if-nez p1, :cond_1b2

    neg-int p1, p2

    .line 256
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBottom()I

    move-result p2

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    const/high16 v2, 0x41f00000  # 30.0f

    if-lt p1, p2, :cond_142

    .line 257
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p2

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBottom()I

    move-result v3

    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr p2, p1

    .line 258
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p1

    const/high16 v3, 0x42400000  # 48.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    if-ge p2, p1, :cond_f2

    .line 259
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p1

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    .line 261
    :cond_f2
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$300(Lcom/codemao/nemo/activity/UserDetailActivity;)Lcom/codemao/nemo/bean/UserDetailInfoV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_status()Z

    move-result p1

    if-nez p1, :cond_11e

    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$500(Lcom/codemao/nemo/activity/UserDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_107

    goto :goto_11e

    .line 264
    :cond_107
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v3, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$800(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result p1

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v4}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$900(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v4

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v3, p1, p2, v4, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_134

    .line 262
    :cond_11e
    :goto_11e
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v3, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$600(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result p1

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v4}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$700(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v4

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v3, p1, p2, v4, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 266
    :goto_134
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1002(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    .line 267
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1c0

    .line 269
    :cond_142
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$300(Lcom/codemao/nemo/activity/UserDetailActivity;)Lcom/codemao/nemo/bean/UserDetailInfoV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_status()Z

    move-result p1

    if-nez p1, :cond_186

    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$500(Lcom/codemao/nemo/activity/UserDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_15f

    goto :goto_186

    .line 273
    :cond_15f
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p2, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$800(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$900(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v4, v4, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v4, v2

    invoke-virtual {p2, p1, v0, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_1ac

    .line 271
    :cond_186
    :goto_186
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p2, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$600(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$700(Lcom/codemao/nemo/activity/UserDetailActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v4, v4, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v4, v2

    invoke-virtual {p2, p1, v0, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 275
    :goto_1ac
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1002(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    goto :goto_1c0

    .line 279
    :cond_1b2
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1002(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    .line 280
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1c0
    return-void
.end method
