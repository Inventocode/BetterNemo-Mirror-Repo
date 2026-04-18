.class public LXI/xo/XI/XI/xo;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p1, :cond_7c

    if-nez p2, :cond_6

    goto/16 :goto_7c

    :cond_6
    const-string v0, "openIdNotifyFlag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    const-string v0, "openIdPackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_37

    :cond_21
    const/4 v3, 0x2

    if-ne v0, v3, :cond_35

    const-string v0, "openIdPackageList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_38

    :cond_35
    if-nez v0, :cond_38

    :goto_37
    const/4 v1, 0x1

    :cond_38
    :goto_38
    if-nez v1, :cond_3b

    return-void

    :cond_3b
    const-string p1, "openIdType"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LXI/xo/XI/XI/CA;->XI()LXI/xo/XI/XI/CA;

    move-result-object p2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "oaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object p1, p2, LXI/xo/XI/XI/CA;->K0:LXI/xo/XI/XI/XI;

    goto :goto_75

    :cond_53
    const-string v0, "vaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p1, p2, LXI/xo/XI/XI/CA;->xo:LXI/xo/XI/XI/XI;

    goto :goto_75

    :cond_5e
    const-string v0, "aaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object p1, p2, LXI/xo/XI/XI/CA;->kM:LXI/xo/XI/XI/XI;

    goto :goto_75

    :cond_69
    const-string v0, "udid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, p2, LXI/xo/XI/XI/CA;->XI:LXI/xo/XI/XI/XI;

    goto :goto_75

    :cond_74
    const/4 p1, 0x0

    :goto_75
    if-nez p1, :cond_78

    return-void

    :cond_78
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p1, LXI/xo/XI/XI/XI;->XI:J

    :cond_7c
    :goto_7c
    return-void
.end method
