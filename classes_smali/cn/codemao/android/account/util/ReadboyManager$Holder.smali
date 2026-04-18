.class final Lcn/codemao/android/account/util/ReadboyManager$Holder;
.super Ljava/lang/Object;
.source "ReadboyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/ReadboyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final ins:Lcn/codemao/android/account/util/ReadboyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcn/codemao/android/account/util/ReadboyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;-><init>(Lcn/codemao/android/account/util/ReadboyManager$1;)V

    sput-object v0, Lcn/codemao/android/account/util/ReadboyManager$Holder;->ins:Lcn/codemao/android/account/util/ReadboyManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/codemao/android/account/util/ReadboyManager;
    .registers 1

    .line 41
    sget-object v0, Lcn/codemao/android/account/util/ReadboyManager$Holder;->ins:Lcn/codemao/android/account/util/ReadboyManager;

    return-object v0
.end method
