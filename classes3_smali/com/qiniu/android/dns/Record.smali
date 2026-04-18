.class public final Lcom/qiniu/android/dns/Record;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/Record$Source;
    }
.end annotation


# instance fields
.field public final timeStamp:J

.field public final ttl:I

.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLcom/qiniu/android/dns/Record$Source;)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/qiniu/android/dns/Record;->type:I

    const/16 p1, 0x258

    if-ge p3, p1, :cond_d

    const/16 p3, 0x258

    .line 51
    :cond_d
    iput p3, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    .line 52
    iput-wide p4, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 60
    instance-of v2, p1, Lcom/qiniu/android/dns/Record;

    if-nez v2, :cond_c

    goto :goto_2f

    .line 63
    :cond_c
    check-cast p1, Lcom/qiniu/android/dns/Record;

    .line 64
    iget-object v2, p0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Lcom/qiniu/android/dns/Record;->type:I

    iget v3, p1, Lcom/qiniu/android/dns/Record;->type:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v3, p1, Lcom/qiniu/android/dns/Record;->ttl:I

    if-ne v2, v3, :cond_2d

    iget-wide v2, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    iget-wide v4, p1, Lcom/qiniu/android/dns/Record;->timeStamp:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method
