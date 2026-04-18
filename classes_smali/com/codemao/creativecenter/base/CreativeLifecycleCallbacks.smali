.class public Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;
.super Ljava/lang/Object;
.source "CreativeLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;
    }
.end annotation


# instance fields
.field private activityActive:I

.field private mCallBack:Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->activityActive:I

    .line 26
    iput-object p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->mCallBack:Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 31
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->addActivity(Landroid/app/Activity;)V

    .line 33
    :try_start_7
    instance-of p2, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz p2, :cond_41

    .line 34
    check-cast p1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/SketchActivity2;->getType()I

    move-result p1

    if-eqz p1, :cond_35

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2d

    const/4 p2, 0x2

    if-eq p1, p2, :cond_25

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1d

    goto :goto_41

    .line 46
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putBackGroundUploadStartTime(J)V

    goto :goto_41

    .line 37
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putBackGroundDrawStartTime(J)V

    goto :goto_41

    .line 43
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putActorUploadStartTime(J)V

    goto :goto_41

    .line 40
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putActorDrawStartTime(J)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    :goto_41
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 9

    .line 94
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->removeActivity(Landroid/app/Activity;)V

    .line 96
    :try_start_7
    instance-of v0, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz v0, :cond_75

    .line 100
    check-cast p1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/SketchActivity2;->getType()I

    move-result p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_75

    const-string v0, ""

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_58

    const/4 v3, 0x1

    if-eq p1, v3, :cond_47

    const/4 v3, 0x2

    if-eq p1, v3, :cond_34

    const/4 v3, 0x3

    if-eq p1, v3, :cond_22

    move-object p1, v0

    goto :goto_6b

    :cond_22
    :try_start_22
    const-string v0, "上传背景素材编辑页面"

    const-string p1, "上传背景素材编辑页面停留"

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getBackGroundUploadReportTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 124
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putBackGroundUploadStartTime(J)V

    :goto_32
    move-wide v1, v3

    goto :goto_6b

    :cond_34
    const-string/jumbo v0, "背景画板"

    const-string/jumbo p1, "背景画板停留"

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getBackGroundDrawReportTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 106
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putBackGroundDrawStartTime(J)V

    goto :goto_32

    :cond_47
    const-string v0, "上传角色素材编辑页面"

    const-string p1, "上传角色素材编辑页面停留"

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getActorUploadReportTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 118
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putActorUploadStartTime(J)V

    goto :goto_32

    :cond_58
    const-string/jumbo v0, "角色画板"

    const-string/jumbo p1, "角色画板停留"

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getActorDrawReportTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 112
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putActorDrawStartTime(J)V

    goto :goto_32

    .line 127
    :goto_6b
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendViewDuration(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_75} :catch_75

    :catch_75
    :cond_75
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 82
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 83
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->setCurrentActivity(Landroid/app/Activity;)V

    :cond_12
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 77
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 57
    iget p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->activityActive:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->activityActive:I

    if-ne p1, v0, :cond_f

    .line 59
    iget-object p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->mCallBack:Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;

    if-eqz p1, :cond_f

    .line 60
    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;->onChanged(Z)V

    :cond_f
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 67
    iget p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->activityActive:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->activityActive:I

    if-nez p1, :cond_10

    .line 69
    iget-object p1, p0, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;->mCallBack:Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;->onChanged(Z)V

    :cond_10
    return-void
.end method
