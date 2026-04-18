.class public Lcn/codemao/android/account/exception/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static instance:Lcn/codemao/android/account/exception/CrashHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/exception/CrashHandler;
    .registers 1

    .line 18
    new-instance v0, Lcn/codemao/android/account/exception/CrashHandler;

    invoke-direct {v0}, Lcn/codemao/android/account/exception/CrashHandler;-><init>()V

    sput-object v0, Lcn/codemao/android/account/exception/CrashHandler;->instance:Lcn/codemao/android/account/exception/CrashHandler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcn/codemao/android/account/exception/CrashHandler;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/exception/CrashHandler;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 29
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-class v1, Lcn/codemao/android/account/CodeMaoAccount;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "catch"

    .line 31
    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 35
    :cond_19
    iget-object v0, p0, Lcn/codemao/android/account/exception/CrashHandler;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
