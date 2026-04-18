.class final Lcn/codemao/android/account/util/UniqueId$InstanceHolder;
.super Ljava/lang/Object;
.source "UniqueId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/UniqueId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcn/codemao/android/account/util/UniqueId;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcn/codemao/android/account/util/UniqueId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/util/UniqueId;-><init>(Lcn/codemao/android/account/util/UniqueId$1;)V

    sput-object v0, Lcn/codemao/android/account/util/UniqueId$InstanceHolder;->INSTANCE:Lcn/codemao/android/account/util/UniqueId;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/codemao/android/account/util/UniqueId;
    .registers 1

    .line 53
    sget-object v0, Lcn/codemao/android/account/util/UniqueId$InstanceHolder;->INSTANCE:Lcn/codemao/android/account/util/UniqueId;

    return-object v0
.end method
