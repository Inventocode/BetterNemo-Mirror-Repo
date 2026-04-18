.class public final enum Lcom/umeng/commonsdk/internal/utils/d$a;
.super Ljava/lang/Enum;
.source "ExecShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/internal/utils/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/internal/utils/d$a;

.field private static final synthetic c:[Lcom/umeng/commonsdk/internal/utils/d$a;


# instance fields
.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/d$a;

    const-string v1, "/system/xbin/which"

    const-string v2, "su"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "check_su_binary"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Lcom/umeng/commonsdk/internal/utils/d$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/internal/utils/d$a;

    aput-object v0, v1, v3

    .line 17
    sput-object v1, Lcom/umeng/commonsdk/internal/utils/d$a;->c:[Lcom/umeng/commonsdk/internal/utils/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/umeng/commonsdk/internal/utils/d$a;->b:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/internal/utils/d$a;
    .registers 2

    .line 17
    const-class v0, Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/internal/utils/d$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/internal/utils/d$a;
    .registers 1

    .line 17
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/d$a;->c:[Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/internal/utils/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/internal/utils/d$a;

    return-object v0
.end method
