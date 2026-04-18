.class final synthetic Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "PublicSuffixDatabase.kt"


# direct methods
.method constructor <init>(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 98
    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)[B

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "publicSuffixListBytes"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .registers 2

    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    const-string v0, "getPublicSuffixListBytes()[B"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 98
    check-cast p1, [B

    invoke-static {v0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$setPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;[B)V

    return-void
.end method
