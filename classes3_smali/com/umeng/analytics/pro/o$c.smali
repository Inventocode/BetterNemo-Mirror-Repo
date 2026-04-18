.class public Lcom/umeng/analytics/pro/o$c;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1679
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    const/4 v1, -0x1

    .line 1681
    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->b:I

    .line 1682
    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->c:I

    .line 1684
    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->d:I

    .line 1685
    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->e:I

    .line 1687
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 1690
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .registers 6

    if-eqz p1, :cond_a5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_98

    const/4 v0, 0x4

    if-eq p1, v0, :cond_83

    const/4 v0, 0x5

    if-eq p1, v0, :cond_72

    const/4 v0, 0x6

    if-eq p1, v0, :cond_55

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3f

    const/16 v0, 0xb

    if-eq p1, v0, :cond_25

    .line 1882
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_1e

    goto/16 :goto_b1

    :cond_1e
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto/16 :goto_b1

    .line 1858
    :cond_25
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_34

    .line 1860
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    goto/16 :goto_b1

    .line 1862
    :cond_34
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;-><init>()V

    int-to-long v0, p2

    .line 1863
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    goto/16 :goto_b1

    .line 1878
    :cond_3f
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p2, :cond_47

    goto/16 :goto_b1

    :cond_47
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    .line 1879
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_b1

    .line 1849
    :cond_55
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_63

    .line 1851
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    goto :goto_b1

    .line 1853
    :cond_63
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    goto :goto_b1

    .line 1874
    :cond_72
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p2, :cond_79

    goto :goto_b1

    :cond_79
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    .line 1875
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    goto :goto_b1

    .line 1867
    :cond_83
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p2, :cond_8a

    goto :goto_b1

    :cond_8a
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    .line 1868
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_b1

    .line 1846
    :cond_98
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_9f

    goto :goto_b1

    :cond_9f
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto :goto_b1

    .line 1871
    :cond_a5
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p2, :cond_ac

    goto :goto_b1

    :cond_ac
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    :goto_b1
    return-object p1
.end method


# virtual methods
.method public a(I)I
    .registers 5

    .line 1731
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1730
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_24

    const v1, 0x15180

    if-le v0, v1, :cond_21

    goto :goto_24

    :cond_21
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_24
    :goto_24
    return p1
.end method

.method public a()V
    .registers 3

    const/4 v0, -0x1

    .line 1695
    :try_start_1
    invoke-virtual {p0, v0, v0}, Lcom/umeng/analytics/pro/o$c;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1697
    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/o$c;->b:I

    const/4 v1, 0x1

    .line 1698
    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/o$c;->c:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

.method public a(II)[I
    .registers 10

    .line 1704
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "report_policy"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1705
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v1

    const-string v3, "report_interval"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v2, :cond_6c

    .line 1706
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_6c

    :cond_33
    const/4 v6, 0x6

    if-ne v6, v0, :cond_4c

    const/16 p1, 0x5a

    if-eq v1, v2, :cond_41

    if-lt v1, p1, :cond_41

    const p2, 0x15180

    if-le v1, p2, :cond_43

    :cond_41
    const/16 v1, 0x5a

    :cond_43
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    :cond_4c
    const/16 v6, 0xb

    if-ne v6, v0, :cond_65

    const/16 p1, 0xf

    if-eq v1, v2, :cond_5a

    if-lt v1, p1, :cond_5a

    const/16 p2, 0xe10

    if-le v1, p2, :cond_5c

    :cond_5a
    const/16 v1, 0xf

    :cond_5c
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    :cond_65
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0

    :cond_6c
    :goto_6c
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0
.end method

.method protected b()V
    .registers 11

    .line 1743
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    .line 1744
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_38

    .line 1746
    iget-object v1, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v6, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v6, :cond_20

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_26

    .line 1747
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_34

    :cond_26
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    move-object v0, v1

    :goto_34
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_e2

    .line 1750
    :cond_38
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "integrated_test"

    const-string v6, "-1"

    invoke-static {v0, v1, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    .line 1752
    :goto_51
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 1753
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v1, :cond_64

    .line 1754
    sget-object v1, Lcom/umeng/analytics/pro/j;->K:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-static {v1, v2, v7, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1758
    :cond_64
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_7a

    if-eqz v0, :cond_7a

    .line 1762
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_e2

    .line 1763
    :cond_7a
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "RPT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1768
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_c3

    .line 1770
    invoke-static {}, Lcom/umeng/analytics/pro/o;->g()Landroid/content/Context;

    move-result-object v0

    const-string v7, "test_report_interval"

    invoke-static {v0, v7, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_b0

    const/4 v0, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    if-eqz v0, :cond_bb

    const v0, 0x15f90

    .line 1773
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o$c;->a(I)I

    move-result v0

    goto :goto_c4

    .line 1774
    :cond_bb
    iget v0, p0, Lcom/umeng/analytics/pro/o$c;->c:I

    if-lez v0, :cond_c0

    goto :goto_c4

    .line 1777
    :cond_c0
    iget v0, p0, Lcom/umeng/analytics/pro/o$c;->e:I

    goto :goto_c4

    :cond_c3
    const/4 v0, 0x0

    .line 1780
    :goto_c4
    iget-object v1, p0, Lcom/umeng/analytics/pro/o$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/o$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_e2

    .line 1782
    :cond_d1
    iget v0, p0, Lcom/umeng/analytics/pro/o$c;->d:I

    .line 1783
    iget v6, p0, Lcom/umeng/analytics/pro/o$c;->e:I

    .line 1784
    iget v7, p0, Lcom/umeng/analytics/pro/o$c;->b:I

    if-eq v7, v1, :cond_dc

    .line 1786
    iget v6, p0, Lcom/umeng/analytics/pro/o$c;->c:I

    move v0, v7

    .line 1788
    :cond_dc
    invoke-direct {p0, v0, v6}, Lcom/umeng/analytics/pro/o$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1793
    :goto_e2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 1795
    :try_start_e8
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_142

    const-string v6, ""

    if-eqz v1, :cond_f6

    .line 1797
    :try_start_f0
    sget-object v0, Lcom/umeng/analytics/pro/j;->I:Ljava/lang/String;

    invoke-static {v0, v2, v6, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_142

    .line 1798
    :cond_f6
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_142

    const-string v7, "@"

    const-wide/16 v8, 0x3e8

    if-eqz v1, :cond_117

    .line 1800
    :try_start_fe
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->getReportInterval()J

    move-result-wide v0

    .line 1801
    div-long/2addr v0, v8

    .line 1802
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1803
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1805
    sget-object v0, Lcom/umeng/analytics/pro/j;->J:Ljava/lang/String;

    invoke-static {v0, v2, v6, v1, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_142

    .line 1806
    :cond_117
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v1, :cond_121

    .line 1808
    sget-object v0, Lcom/umeng/analytics/pro/j;->L:Ljava/lang/String;

    invoke-static {v0, v2, v6, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_142

    .line 1809
    :cond_121
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_140

    .line 1811
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->getReportInterval()J

    move-result-wide v0

    .line 1812
    div-long/2addr v0, v8

    .line 1813
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1814
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1816
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/j;->M:Ljava/lang/String;

    invoke-static {v0, v2, v6, v1, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_142

    .line 1817
    :cond_140
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
    :try_end_142
    .catchall {:try_start_fe .. :try_end_142} :catchall_142

    :catchall_142
    :cond_142
    :goto_142
    return-void
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .registers 2

    .line 1829
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o$c;->b()V

    .line 1830
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
