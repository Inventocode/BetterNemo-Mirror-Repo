.class Lcom/codemao/creativestore/CreativeStoreUtils$SingletonHoler;
.super Ljava/lang/Object;
.source "CreativeStoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/CreativeStoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHoler"
.end annotation


# static fields
.field private static instance:Lcom/codemao/creativestore/CreativeStoreUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/codemao/creativestore/CreativeStoreUtils;

    invoke-direct {v0}, Lcom/codemao/creativestore/CreativeStoreUtils;-><init>()V

    sput-object v0, Lcom/codemao/creativestore/CreativeStoreUtils$SingletonHoler;->instance:Lcom/codemao/creativestore/CreativeStoreUtils;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/creativestore/CreativeStoreUtils;
    .registers 1

    .line 26
    sget-object v0, Lcom/codemao/creativestore/CreativeStoreUtils$SingletonHoler;->instance:Lcom/codemao/creativestore/CreativeStoreUtils;

    return-object v0
.end method
