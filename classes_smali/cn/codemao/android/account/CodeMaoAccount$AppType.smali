.class public final enum Lcn/codemao/android/account/CodeMaoAccount$AppType;
.super Ljava/lang/Enum;
.source "CodeMaoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/CodeMaoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/account/CodeMaoAccount$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/account/CodeMaoAccount$AppType;

.field public static final enum APP_LUNAR:Lcn/codemao/android/account/CodeMaoAccount$AppType;

.field public static final enum APP_ROCKET:Lcn/codemao/android/account/CodeMaoAccount$AppType;

.field public static final enum NORMAL:Lcn/codemao/android/account/CodeMaoAccount$AppType;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 77
    new-instance v0, Lcn/codemao/android/account/CodeMaoAccount$AppType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "normal"

    invoke-direct {v0, v1, v2, v3}, Lcn/codemao/android/account/CodeMaoAccount$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/codemao/android/account/CodeMaoAccount$AppType;->NORMAL:Lcn/codemao/android/account/CodeMaoAccount$AppType;

    .line 78
    new-instance v1, Lcn/codemao/android/account/CodeMaoAccount$AppType;

    const-string v3, "APP_ROCKET"

    const/4 v4, 0x1

    const-string v5, "rocket"

    invoke-direct {v1, v3, v4, v5}, Lcn/codemao/android/account/CodeMaoAccount$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/codemao/android/account/CodeMaoAccount$AppType;->APP_ROCKET:Lcn/codemao/android/account/CodeMaoAccount$AppType;

    .line 79
    new-instance v3, Lcn/codemao/android/account/CodeMaoAccount$AppType;

    const-string v5, "APP_LUNAR"

    const/4 v6, 0x2

    const-string v7, "lunar"

    invoke-direct {v3, v5, v6, v7}, Lcn/codemao/android/account/CodeMaoAccount$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/codemao/android/account/CodeMaoAccount$AppType;->APP_LUNAR:Lcn/codemao/android/account/CodeMaoAccount$AppType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/codemao/android/account/CodeMaoAccount$AppType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 76
    sput-object v5, Lcn/codemao/android/account/CodeMaoAccount$AppType;->$VALUES:[Lcn/codemao/android/account/CodeMaoAccount$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcn/codemao/android/account/CodeMaoAccount$AppType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$AppType;
    .registers 2

    .line 76
    const-class v0, Lcn/codemao/android/account/CodeMaoAccount$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/account/CodeMaoAccount$AppType;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/account/CodeMaoAccount$AppType;
    .registers 1

    .line 76
    sget-object v0, Lcn/codemao/android/account/CodeMaoAccount$AppType;->$VALUES:[Lcn/codemao/android/account/CodeMaoAccount$AppType;

    invoke-virtual {v0}, [Lcn/codemao/android/account/CodeMaoAccount$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/account/CodeMaoAccount$AppType;

    return-object v0
.end method
