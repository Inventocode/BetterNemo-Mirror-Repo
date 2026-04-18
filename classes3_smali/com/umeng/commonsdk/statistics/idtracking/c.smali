.class public Lcom/umeng/commonsdk/statistics/idtracking/c;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "IDFATracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "idfa"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "idfa"

    .line 16
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getIdfa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
