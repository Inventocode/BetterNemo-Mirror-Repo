.class public Lcom/ainirobot/oauth/connect/RuntimeUtil;
.super Ljava/lang/Object;
.source "RuntimeUtil.java"


# static fields
.field private static sAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 22
    sget-object v0, Lcom/ainirobot/oauth/connect/RuntimeUtil;->sAppContext:Landroid/content/Context;

    return-object v0
.end method
