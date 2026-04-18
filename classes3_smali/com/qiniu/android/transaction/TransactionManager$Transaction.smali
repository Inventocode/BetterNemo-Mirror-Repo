.class public Lcom/qiniu/android/transaction/TransactionManager$Transaction;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/transaction/TransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field private static TransactionTypeNormal:I = 0x0

.field private static TransactionTypeTime:I = 0x1


# instance fields
.field public final actionHandler:Ljava/lang/Runnable;

.field private actionTime:J

.field private final interval:I

.field public final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Runnable;)V
    .registers 5

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget p2, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->TransactionTypeTime:I

    iput p2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    .line 170
    iput-object p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->name:Ljava/lang/String;

    .line 172
    iput p3, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->interval:I

    .line 173
    iput-object p4, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 4

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget p2, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->TransactionTypeNormal:I

    iput p2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    .line 157
    iput-object p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->interval:I

    .line 160
    iput-object p3, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionHandler:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/transaction/TransactionManager$Transaction;J)Z
    .registers 3

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->maybeCompleted(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/transaction/TransactionManager$Transaction;J)V
    .registers 3

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->handleAction(J)V

    return-void
.end method

.method private handleAction(J)V
    .registers 5

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->shouldAction(J)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 189
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    :cond_e
    iget v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    sget v1, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->TransactionTypeNormal:I

    if-ne v0, v1, :cond_19

    const-wide/16 p1, 0x0

    .line 192
    iput-wide p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionTime:J

    goto :goto_23

    .line 193
    :cond_19
    sget v1, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->TransactionTypeTime:I

    if-ne v0, v1, :cond_23

    .line 194
    iget v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->interval:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionTime:J

    :cond_23
    :goto_23
    return-void
.end method

.method private maybeCompleted(J)Z
    .registers 3

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->shouldAction(J)Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    sget p2, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->TransactionTypeNormal:I

    if-ne p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private shouldAction(J)Z
    .registers 6

    .line 177
    iget-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
