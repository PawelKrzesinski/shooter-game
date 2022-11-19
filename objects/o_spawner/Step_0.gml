if(enemySpawnTimer > 0){
	enemySpawnTimer -= 1;
}

if(enemySpawnTimer <= 0 && enemyCount < enemyLimit){
	enemySpawn = true;
}

if(enemySpawn = true){ 
	enemySpawnTimer = enemySpawnTimerMax
	randomize();
	enemySpawnX = x + irandom_range(-500, 500);
	enemySpawnY = y + irandom_range(-500, 500);
	instance_create_layer(enemySpawnX, enemySpawnY, "Instances", o_enemy_1);
	enemyCount += 1;
	enemySpawn = false;
}