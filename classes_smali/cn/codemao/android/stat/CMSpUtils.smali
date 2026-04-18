.class public Lcn/codemao/android/stat/CMSpUtils;
.super Ljava/lang/Object;
.source "CMSpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/stat/CMSpUtils$SingleInstance;
    }
.end annotation


# instance fields
.field private mCommitThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0}, Lcn/codemao/android/stat/CMSpUtils;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/stat/CMSpUtils$1;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcn/codemao/android/stat/CMSpUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/stat/CMSpUtils;
    .registers 1

    .line 24
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils$SingleInstance;->access$100()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcn/codemao/android/stat/CMSpUtils;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_21

    .line 33
    iget-object v0, p0, Lcn/codemao/android/stat/CMSpUtils;->mCommitThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_14

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cm_sp_commit_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/codemao/android/stat/CMSpUtils;->mCommitThread:Landroid/os/HandlerThread;

    .line 35
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    :cond_14
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/codemao/android/stat/CMSpUtils;->mCommitThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/codemao/android/stat/CMSpUtils;->mHandler:Landroid/os/Handler;

    :cond_21
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_11

    .line 46
    iget-object v0, p0, Lcn/codemao/android/stat/CMSpUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/codemao/android/stat/CMSpUtils$1;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/stat/CMSpUtils$1;-><init>(Lcn/codemao/android/stat/CMSpUtils;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 53
    :cond_11
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_14
    return-void
.end method
