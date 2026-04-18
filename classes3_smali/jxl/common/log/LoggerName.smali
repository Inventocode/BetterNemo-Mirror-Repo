.class public Ljxl/common/log/LoggerName;
.super Ljava/lang/Object;
.source "LoggerName.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Ljxl/common/log/SimpleLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/common/log/LoggerName;->NAME:Ljava/lang/String;

    return-void
.end method
