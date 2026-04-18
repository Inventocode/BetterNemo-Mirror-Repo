.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportQuasiRealtime"
.end annotation


# static fields
.field private static DEFAULT_REPORT_INTERVAL:J = 0x3a98L

.field private static MAX_REPORT_INTERVAL:J = 0x15f90L

.field private static MIN_REPORT_INTERVAL:J = 0xbb8L


# instance fields
.field private mReportInterval:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getReportInterval()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    return-wide v0
.end method

.method public setReportInterval(J)V
    .registers 6

    .line 111
    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->MIN_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->MAX_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_f

    .line 112
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    goto :goto_13

    .line 115
    :cond_f
    sget-wide p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->DEFAULT_REPORT_INTERVAL:J

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->mReportInterval:J

    :goto_13
    return-void
.end method

.method public shouldSendMessage(Z)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
