.class public abstract Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;
.super Ljava/lang/Object;
.source "GroupTaskThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/utils/GroupTaskThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;
    }
.end annotation


# instance fields
.field protected state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Waiting:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V
.end method

.method public taskComplete()V
    .registers 2

    .line 103
    sget-object v0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Complete:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    return-void
.end method
