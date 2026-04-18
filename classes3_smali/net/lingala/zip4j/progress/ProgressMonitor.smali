.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/progress/ProgressMonitor$Task;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$Result;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    }
.end annotation


# instance fields
.field private cancelAllTasks:Z

.field private exception:Ljava/lang/Exception;

.field private pause:Z

.field private percentDone:I

.field private result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field private state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method private reset()V
    .registers 2

    .line 83
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->NONE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 84
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method


# virtual methods
.method public endProgressMonitor()V
    .registers 2

    .line 63
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const/16 v0, 0x64

    .line 64
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 65
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method public endProgressMonitor(Ljava/lang/Exception;)V
    .registers 3

    .line 69
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    .line 71
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method public fullReset()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 78
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .line 140
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getPercentDone()I
    .registers 2

    .line 108
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return v0
.end method

.method public getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .registers 2

    .line 132
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

.method public getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .registers 2

    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.method public isCancelAllTasks()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return v0
.end method

.method public setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V
    .registers 2

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-void
.end method

.method public setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method

.method public setTotalWork(J)V
    .registers 3

    .line 100
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    return-void
.end method

.method public updateWorkCompleted(J)V
    .registers 8

    .line 44
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 46
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1b

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 47
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_1b

    .line 49
    iput p2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 53
    :cond_1b
    :goto_1b
    iget-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    if-eqz p1, :cond_27

    const-wide/16 p1, 0x96

    .line 55
    :try_start_21
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1b

    :catch_25
    nop

    goto :goto_1b

    :cond_27
    return-void
.end method
