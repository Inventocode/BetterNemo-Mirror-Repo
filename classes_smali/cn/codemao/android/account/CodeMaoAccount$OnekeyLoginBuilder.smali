.class public final Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
.super Ljava/lang/Object;
.source "CodeMaoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/CodeMaoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnekeyLoginBuilder"
.end annotation


# instance fields
.field public appType:Lcn/codemao/android/account/CodeMaoAccount$AppType;

.field public mShanyanAppId:Ljava/lang/String;

.field public oneKeyUIConfig:Lcn/codemao/android/onekeylogin/config/OneKeyUIConfig;

.field private originBuilder:Lcn/codemao/android/account/CodeMaoAccount$Builder;

.field public protocolMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/codemao/android/account/CodeMaoAccount$Builder;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->originBuilder:Lcn/codemao/android/account/CodeMaoAccount$Builder;

    return-void
.end method


# virtual methods
.method public buildOnekeyLoginBuilder()Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 140
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->mShanyanAppId:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setOnekeyShanyanAppId(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->protocolMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setOnekeyProtocolMap(Ljava/util/LinkedHashMap;)V

    .line 142
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->appType:Lcn/codemao/android/account/CodeMaoAccount$AppType;

    iget-object v0, v0, Lcn/codemao/android/account/CodeMaoAccount$AppType;->name:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setOnekeyAppType(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->originBuilder:Lcn/codemao/android/account/CodeMaoAccount$Builder;

    return-object v0
.end method

.method public set(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
    .registers 2

    .line 114
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->mShanyanAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppType(Lcn/codemao/android/account/CodeMaoAccount$AppType;)Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
    .registers 2

    .line 125
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->appType:Lcn/codemao/android/account/CodeMaoAccount$AppType;

    return-object p0
.end method

.method public setProtocolMap(Ljava/util/LinkedHashMap;)Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->protocolMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public setShanyanAppId(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
    .registers 2

    .line 109
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;->mShanyanAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setUiConfig(Lcn/codemao/android/onekeylogin/config/OneKeyUIConfig;)Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
    .registers 2

    return-object p0
.end method
