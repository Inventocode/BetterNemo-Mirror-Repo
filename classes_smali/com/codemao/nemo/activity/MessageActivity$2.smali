.class Lcom/codemao/nemo/activity/MessageActivity$2;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/MessageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/MessageActivity;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_c

    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "消息页-点击点赞/收藏"

    .line 126
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_14

    :cond_c
    new-array p1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "消息页-点击被再创作"

    .line 128
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_14
    return-void
.end method
