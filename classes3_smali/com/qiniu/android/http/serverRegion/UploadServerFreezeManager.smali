.class public Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
.super Ljava/lang/Object;
.source "UploadServerFreezeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;
    }
.end annotation


# instance fields
.field private frozenInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->frozenInfo:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public freezeType(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_21

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_21

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->frozenInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;

    if-nez v0, :cond_1e

    .line 41
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;-><init>(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$1;)V

    .line 42
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->frozenInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1e
    invoke-static {v0, p2}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;->access$200(Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public isTypeFrozen(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_20

    .line 28
    :cond_a
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->frozenInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;

    if-eqz p1, :cond_1f

    .line 29
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;->access$000(Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0
.end method

.method public unfreezeType(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->frozenInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_e
    return-void
.end method
