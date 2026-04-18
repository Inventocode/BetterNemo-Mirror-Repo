.class public Lcom/codemao/nemo/event/CourseDotChangeEvent;
.super Ljava/lang/Object;
.source "CourseDotChangeEvent.java"


# instance fields
.field private packageId:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/codemao/nemo/event/CourseDotChangeEvent;->packageId:J

    return-void
.end method


# virtual methods
.method public getPackageId()J
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/codemao/nemo/event/CourseDotChangeEvent;->packageId:J

    return-wide v0
.end method
