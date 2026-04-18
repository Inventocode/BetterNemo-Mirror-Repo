.class public final Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideCharacteristicPropertiesParserFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;
    .registers 1

    .line 25
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;
    .registers 1

    .line 29
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule;->provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;
    .registers 2

    .line 21
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->get()Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;

    move-result-object v0

    return-object v0
.end method
