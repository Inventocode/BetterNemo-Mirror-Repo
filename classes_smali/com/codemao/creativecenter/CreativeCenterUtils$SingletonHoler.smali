.class Lcom/codemao/creativecenter/CreativeCenterUtils$SingletonHoler;
.super Ljava/lang/Object;
.source "CreativeCenterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/CreativeCenterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHoler"
.end annotation


# static fields
.field private static instance:Lcom/codemao/creativecenter/CreativeCenterUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/codemao/creativecenter/CreativeCenterUtils;

    invoke-direct {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/CreativeCenterUtils$SingletonHoler;->instance:Lcom/codemao/creativecenter/CreativeCenterUtils;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 1

    .line 80
    sget-object v0, Lcom/codemao/creativecenter/CreativeCenterUtils$SingletonHoler;->instance:Lcom/codemao/creativecenter/CreativeCenterUtils;

    return-object v0
.end method
