.class public final synthetic Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/net/HttpControl;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/net/HttpControl;Ljava/util/HashMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/HttpControl;

    iput-object p2, p0, Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 4

    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/net/HttpControl;

    iget-object v1, p0, Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    invoke-static {v0, v1, p1}, Lcn/codemao/android/account/net/HttpControl;->$r8$lambda$z4c3_anXvoIguU_PRvEIKrgfkXg(Lcn/codemao/android/account/net/HttpControl;Ljava/util/HashMap;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
