.class Lcom/codemao/nemo/activity/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/SwitchButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/SettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/SettingActivity;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/codemao/nemo/view/SwitchButton;Z)V
    .registers 4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "设置页-开启护眼模式"

    .line 128
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserEyeshieldMode(Z)V

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/EyeshieldModeChange;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/event/EyeshieldModeChange;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
